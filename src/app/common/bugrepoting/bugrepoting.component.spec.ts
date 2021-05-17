import { ComponentFixture, TestBed } from '@angular/core/testing';

import { BugrepotingComponent } from './bugrepoting.component';

describe('BugrepotingComponent', () => {
  let component: BugrepotingComponent;
  let fixture: ComponentFixture<BugrepotingComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ BugrepotingComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(BugrepotingComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
